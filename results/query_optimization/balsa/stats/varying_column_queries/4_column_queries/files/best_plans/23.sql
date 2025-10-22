/*+ NestLoop(c ph u)
 HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 IndexScan(u)
 Leading(((c ph) u)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate='2014-08-27 04:07:57'::timestamp AND u.Views>=0 AND u.Views<=87;

