/*
 * *****************************************************************************
 * Copyright (C) 2019-2021 Chrystian Huot <chrystian.huot@saubeo.solutions>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 * ****************************************************************************
 */

import { ModuleWithProviders, NgModule } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatDialogModule } from '@angular/material/dialog';
import { ServiceWorkerModule } from '@angular/service-worker';
import { AppUpdateComponent } from './update.component';
import { AppUpdateService } from './update.service';

@NgModule({
    declarations: [AppUpdateComponent],
    imports: [
        MatButtonModule,
        MatDialogModule,
        ServiceWorkerModule,
    ],
})
export class AppUpdateModule {
    static forRoot(): ModuleWithProviders<AppUpdateModule> {
        return {
            ngModule: AppUpdateModule,
            providers: [AppUpdateService],
        };
    }

    // constructor(appUpdateService: AppUpdateService) { }
}
