// Arrange= preparación.
// Act= Ejecución.
// Assert= Verificación

import { describe, jest, test, expect } from '@jest/globals';
import CrudManager from '../../src/js/crudManager.js';

describe('CrudManager',() => {


    beforeEach(() => {
        global.fetch = jest.fn();
    });

    afterEach(() => {
        jest.clearAllMocks();
    });
    

    test('Crear una Instancia', async () => {

        //Preparacion/ Arrange
        const urlBase = '../src/database/';

        //Ejecucion/ Act
        const objCrudManager = new CrudManager(urlBase);


        //Verificacion/ Assert

        expect(objCrudManager.apiUrl).toBe('../src/database/');

    });

});
