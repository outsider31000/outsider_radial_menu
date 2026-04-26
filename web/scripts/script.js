'use strict';

const resourceName = GetParentResourceName();
const SLICE_GAP_DEGREES = 2;

const CLOSE_WHEEL = {
    navAngle: 150,
    minRadiusPercent: 0.0,
    maxRadiusPercent: 0.02,
};

function postNui(endpoint, payload) {
    return fetch(`https://${resourceName}/${endpoint}`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json; charset=UTF-8' },
        body: JSON.stringify(payload || {})
    });
}

document.addEventListener('DOMContentLoaded', function () {

    const MENU = {
        lastmenu: 0,
        numWheels: 0,
        wheels: [],
        IS_OPEN: false,

        DESTROY: function () {
            if (!this.IS_OPEN) return;

            for (let i = 0; i < this.numWheels; i++) {
                this.wheels[i].removeWheel();
            }
            this.wheels = [];
            this.numWheels = 0;
            this.IS_OPEN = false;
        },

        OPEN: function (event) {
            if (this.IS_OPEN) return;
            this.IS_OPEN = true;
            this.lastmenu = event.data.data.lastmenu;

            const closeWheel = {
                ...CLOSE_WHEEL,
                actions: {
                    closemenu: {
                        image: this.lastmenu === 0 ? 'close.png' : 'back.png',
                    },
                },
            };
            const wheels = [closeWheel, ...(event.data.data.wheels || [])];
            this.numWheels = wheels.length;
            this.wheels = new Array(this.numWheels);

            const wheelStyle = event.data.data.style;

            const wheelSize = wheelStyle.sizePx;
            const wheelDiv = document.getElementById('wheelDiv');
            wheelDiv.style.width = wheelSize + 'px';
            wheelDiv.style.height = wheelSize + 'px';

            const marginTopSize = (window.innerHeight - wheelSize) / 2;
            document.getElementById('container').style.marginTop = marginTopSize + 'px';

            for (let i = 0; i < this.numWheels; i++) {
                if (i === 0) {
                    this.wheels[i] = new wheelnav('wheelDiv', null);
                } else {
                    this.wheels[i] = new wheelnav('wheelDiv', this.wheels[0].raphael);
                }

                const wheelData = wheels[i];
                const wheel = this.wheels[i];
                const actionEntries = Object.entries(wheelData.actions || {});

                wheel.navAngle = wheelData.navAngle;
                wheel.clickModeRotate = false;
                wheel.slicePathFunction = slicePath().DonutSlice;
                wheel.slicePathCustom = slicePath().DonutSliceCustomization();
                wheel.slicePathCustom.minRadiusPercent = wheelData.minRadiusPercent;
                wheel.slicePathCustom.maxRadiusPercent = wheelData.maxRadiusPercent;
                if (actionEntries.length > 1) {
                    wheel.sliceAngle = (360 / actionEntries.length) - SLICE_GAP_DEGREES;
                }
                wheel.sliceInitPathCustom = wheel.slicePathCustom;
                wheel.sliceHoverPathCustom = wheel.slicePathCustom;
                wheel.sliceSelectedPathCustom = wheel.slicePathCustom;
                wheel.slicePathAttr = wheelStyle.slices.default;
                wheel.sliceHoverAttr = wheelStyle.slices.hover;
                wheel.sliceSelectedAttr = wheelStyle.slices.selected;
                wheel.titleWidth = wheelStyle.icons.width;
                wheel.titleHeight = wheelStyle.icons.height;
                wheel.titleAttr = wheelStyle.titles.default;
                wheel.titleHoverAttr = wheelStyle.titles.hover;
                wheel.titleSelectedAttr = wheelStyle.titles.selected;

                const images = actionEntries
                    .map(([, meta]) => meta && meta.image && ('imgsrc:images/' + meta.image))
                    .filter(Boolean);
                wheel.createWheel(images);

                for (let j = 0; j < wheel.navItems.length; j++) {
                    wheel.navItems[j].selected = false;

                    const entry = actionEntries[j];
                    if (!entry) continue;
                    const [command, meta] = entry;
                    const isSubMenu = meta && meta.isSubMenu === true;
                    const eventName = (meta && meta.eventName) || '';
                    const payload = {
                        command: command,
                        isSubMenu: isSubMenu,
                        eventName: eventName,
                        isCommand: !isSubMenu && !eventName,
                        close: !meta || meta.close !== false,
                    };
                    const onClick = function () {
                        if (command === 'closemenu') {
                            goBack();
                            return;
                        }

                        postNui('rm_menu:sliceclicked', payload);
                    };
                    wheel.navItems[j].navSlice.mousedown(onClick);
                    wheel.navItems[j].navTitle.mousedown(onClick);
                }

                wheel.refreshWheel();
            }
        },
    };

    const goBack = function () {
        postNui('rm_menu:back', { lastmenu: MENU.lastmenu });
        if (MENU.lastmenu === 0) {
            MENU.DESTROY();
        }
    };

    window.addEventListener('message', function (event) {
        if (event.data.type === 'init') {
            MENU.OPEN(event);
        } else if (event.data.type === 'close') {
            MENU.DESTROY();
        }
    });

    window.addEventListener('keyup', function (event) {
        if (event.key === 'F6' || event.key === 'Escape') {
            postNui('rm_menu:closemenu');
            MENU.DESTROY();
        } else if (event.key === 'Backspace') {
            goBack();
        }
    });
});
