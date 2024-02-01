using { TestCICD as my } from '../db/schema';

@path : '/service/TestCICD'
service TestCICDService
{
    entity Categories as
        projection on my.Categories;
}

annotate TestCICDService with @requires :
[
    'authenticated-user'
];
