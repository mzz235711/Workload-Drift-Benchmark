/*+ MergeJoin(ph c u)
 HashJoin(c u)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate='2013-10-05 14:06:14'::timestamp AND ph.CreationDate>='2010-08-03 17:30:07'::timestamp AND ph.CreationDate<='2014-08-26 12:12:09'::timestamp AND u.Reputation>=1;

