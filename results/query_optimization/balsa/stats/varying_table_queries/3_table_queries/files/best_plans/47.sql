/*+ MergeJoin(b c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND c.CreationDate>='2010-07-25 20:20:36'::timestamp AND c.CreationDate<='2014-09-08 17:36:58'::timestamp AND u.Views=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-01 15:28:38'::timestamp;

