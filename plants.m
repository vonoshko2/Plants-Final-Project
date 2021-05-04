function [] = plants() %this creates the function that will choose the plant for the season
global plant;%the global variable is plants, because that is what variable is changing
%Labels
plant.fig = figure('numbertitle','off','name','Plant for the Season'); %this creates a title for the window that pops up after the first one, which names it and creates the figure
plant.selectedlabel = uicontrol('style','text','position',[340 -80 200 150],'string','The Beautiful Flower that is Selected:','horizontalalignment','right');%this is the uicontrol for text that labelsabove which plant you choose
plant.Supplies = uicontrol('style','text','position',[40 280 100 100],'string','Supplies the Need to be Purchased to Plant:','horizontalalignment','left');%This labels the category the checkboxes are for
%Checkboxes
SuppliesChecklist = uicontrol('style','checkbox','position',[50 270 70 50],'string','FlowerPot','horizontalalignment','left');%these checkbox uicontrols list the various supplies needed to plant plants
SuppliesChecklists = uicontrol('style','checkbox','position',[50 235 70 50],'string','Soil','horizontalalignment','left');
SuppliesChecklistss = uicontrol('style','checkbox','position',[50 200 70 50],'string','Shovel','horizontalalignment','left');
SuppliesChecklistsss = uicontrol('style','checkbox','position',[50 160 70 50],'string','Plant Food','horizontalalignment','left');


%Choosing a Month
plantList = {'January','February','March','April','May','June','July','August','September','October','November','December',};
    charVectCaption = 'Pick a Month:';
    PlantSeason = listdlg('ListString',plantList,'PromptString',charVectCaption,'ListSize',[200 80]);
%The code above creates a list of months and a pop up window to choose a
%month from
%The code below, with the if else statements, goes through to see what
%month is selected and then displays a uicontrol popupmenu with specific
%plants for that month that can be chosen from
if PlantSeason == 1 %Each month corresponds to a number, with January being 1, and Decemeber being last with 12, with all of them in numerical order. It tests if the month selected is true, and then displays the plants.
  January = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Celery','Leeks','Parsley'});


elseif PlantSeason == 2
    February = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Pansy','Geranium','Eggplant'});
  

elseif PlantSeason == 3
    March = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Beets','Broccoli','Chives'});
  

elseif PlantSeason == 4
    April = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Alyssum','Amarantheus','Poppies'});
  
elseif PlantSeason == 5
    May =uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Snadragons','Lobelia','Swiss Chard'});
  
elseif PlantSeason == 6
    June = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Peony','Bee Balm','Lavender'});
 
elseif PlantSeason == 7
    July = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Day Lily','Roses','Calendula'});
  

elseif PlantSeason == 8
    August = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Hosta','Spinach','Turnip'});
  
elseif PlantSeason == 9
    September = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Myosotis','Torenia','Aster'});
  
elseif PlantSeason == 10
    October = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Tulips','Kale','Garlic'});
  
elseif PlantSeason == 11
    November = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Daisy','Cornflower','Delphinium'},'callback',@NovPlants);
   
elseif PlantSeason == 12
    December = uicontrol('style','popupmenu','position',[370 -50 100 100],'string',{'Sarcococca','Hyacinth','Daffodils'});
else
   error = errordlg('ERROR: Must Make a Decision. Close Out and Start Over.');%Creates an error if you don't select a month or you select all
end 
        

end
