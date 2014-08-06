##8/5/14
### **Further Discussion of Analysis**
- **Should we do metaanalysis** - Discussion with Chris Lortie
  - systematic review
    - filter data pairs
      - readily available data
    - chosing among different effect size metrics
      - geographic scope
      - breadth - species number
      - number ind of each species
    - volume is outcome??
    - scraping funding for researcher and citizen science
      - code how much money allocated to the effort
      - money and data archiving - NSF cyber infra to allow institutions to curate data - big bang for buck

- **Posting derived data** - ok as long as you cite where the data came from
- Keeping track of where data came from to determine if there are errors, etc.
  - columns in spreadsheet for where data comes from,
    - table, figure, email to researcher, etc..
- Try to use most basic (such as number of species or abundance) avoid the derived
  - keep the type of metric coded so you can separate out and keep track of the different metrics, running sensitivity on whether it matters. Can disaggregate the measures and then reaggregate if it does not seem to matter

- Discussion with Ben Bolker:
  - questions from him:
    - what is the i - data points
    - what is sample function doing?
    - What are we doing
      - data cloud from points
      - computing effect size from that
  - Problems:
    - want to do scaled effect size but might have weird dist, but we can do simulation
    - big problem - treating ci and ri as if they are independent errors - may be plausible; we are saying mean is reliable, therefore the errors will not be correlated
    - what are we trying to do; trying to determine effect size with CI
    - are we reinventing metaphor package
      - here are means and sd of effect sizes, tells me overall mean effect size is across all these groups
      - how to go from many means and variances - how do we collapse down to one mean and one variance
        - one point C and R mean and SD (on graph example)
          - More established method delta method - to find variance
          - Our method is to get by simulation (Brian's code)
          - raw data - is it best to collapse the raw data into means and SD
          - Simplicity and Complexity in Ecological Data Analysis: Paul A. Murtaugh- nested anova - if you've got nested design - fancy mixed modeling - can average groups and do one-way anova - similar to our raw data sitaution
          - why picking a bunch of values and sampling one

    - once we have the mean R and the var R we can plunk into metaphor
    - two variances in graph
      - year samples -> average -> effect size
      - trying to get a grand mean across mean 
        - does huge variation across years matter
      - R = Grand mean of all points
      - R = inverse variance weighted mean way to get the grand mean
        - this can take into account large variance
      - What is Grand mean with both in sample variance and the over years variance -
        - overall variance is among year variance + w/in year variance over N - can find this in the literature
      - Two stages
        - getting overall c (mean and variance from subsamples)
        - then simulation
    - computing Rii at lowest levels that you can match the C and R's (example by year, depth, wahtever)
      - can use delta method
      - can simulate
      - can sample randomly from each of the 100 samples
    - then have Rii for each year, depth, bin, etc
    - variance weighted averaging to get the mean Rii
    - combine the variances of those Rii's to get an overall variance
    - with paper with only 8 points
      - assume normality
      - eight Rii 
        - if have variance at sample level - you can use that
        - otherwise the overall variance 

    - Maybe as first pass find Rii and don't worry about sample variance
    - variance that goes in should be standard error of the mean- figure out SE of Ci and Ri which should give you a variance on the Rii and then can use that to calculate the grand mean.

Outcome workflow:






# Group Discussion Notes
## 8/1/14
###Analytical brainstorm
**Need to think about two different analytical methods**
  
  1. how to calculate metrics for CS data to be comparable with researcher data
    - Spatial considerations
    - Density of data points
    - Brian and Suzanne: compile lists of methods used from literature; possibly look at terrestrial examples too
  2. how to compare CS and researcher data across pairs
    - how to take into account different factors that influence outcome
      - added factors to database structure
        - dataset table to include methods used by different CS groups
          - need to determine how to codify (talk to Mark?)
      - new table - Taxa table - to include data on each species
          - includes Family, Genus, Species
          - includes Adult, Juvenile
          - other columns to be determined
    - As going through data and papers, start to keep track of important factors so we can determine how to code and columns that need to be added
          
Database: 
![Database](https://github.com/aeschmidt/Marine_CitiSci/blob/master/admin_files/DBstruc.JPG) 

      
    
  - Using BIC or AIC - needs further discussion
  - Log then z-score or z score then log

###Notes from Week 2 Presentation Feedback

  -  Quality of papers: Is there a way for us to take into account the quality of the published papers that we are including
  - Costs: more data vs. quality - are there tradeoffs?
  - How to take into account factors that affect the pair analysis
  - Scale: how important is variation in outcome at different scale in terms of how CS data are being used, for example in management or in reporting on the state of the oceans
  - Data model - you can have a natural language description of the methods that CS groups use, but need to find a way to codify - Mark can talk to us about this.
     

## 7/30/14
### Lynn
- in the queue with Matt for getting set up on isis
- data searching
- started ppt for presentation

### Suzanne
- papers
    - found ~ 11 papers (with Brian)

### Rachael
- CBC data formatt/bash script
    - very messy
    - will require substantial formatting

### Annie
- worked on CalCOFI data
    - doesn't look too bad
    - wrote some pseudocode

### Brian
- Data
- papers
- formalize search

### Georgina
- made example citation md file on git
- downloaded EU/UK still needs to dig into

### Mary
- format reefcheck
    - joined ReefCheck data
    - make example analysis


## Presentation plan
1. Intro 
    - message box
2. Approach/methods
    - Examples from lit
    - data so far
    - database, paper tool
3. Results
    -  example output
4. Next steps
        

## Future plans
- holding off on further data requests

## 7/28/14
### Organization
- papers
    - going on google drive
    - no folders
    - tag data papers with “data_author(s)_year”
- Github
    - what to put on there
        - code
        - documentation
        - figures
        - analysis output
    - final version archived in a more permanent repo with doi
    - wiki
        - task list
        - car park
        - not using for now
    - possible to create website if interested
        - create branch called github pages

###Data
- can go on KNB
    - make private group so only group members can use it
- Can go on Isis
    - can make accessible for just the group
    - access via command line or RStudio
    - going with this option for now
- BTsync alternative to dropbox (fileshare)

###Writing
- write paper in .Rmd

###Dinner
- Wednesday
    - BBQ



##7/22/14
- Gaps in citizen science
- map locations and taxa being crowd studied
- Citizen
    - Reef (global)
    - ReefCheck
    - Beached Bird
    - eBird
    - Mammal stranding

- Scientific
    - PISCO (CA)
    - AGRRA (Caribbean) 
    - Hawaii
    - RecFin (CA)
    - NOAA Biogeog (Caribbean)
    - CalCOFI


- Data pairs
    - Reef--PISCO, AGRRA, Hawaii
    - ReefCheck--Hawaii
    - CBC--CalCOFI
    - eBird--CalCOFI
    - Marine mammal stranding--

> Written with [StackEdit](https://stackedit.io/).