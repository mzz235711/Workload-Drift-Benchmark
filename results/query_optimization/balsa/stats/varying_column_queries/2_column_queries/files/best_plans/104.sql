/*+ HashJoin(ph b u c)
 MergeJoin(b u c)
 NestLoop(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Views>=0 AND u.CreationDate>='2010-11-27 22:27:41'::timestamp;

