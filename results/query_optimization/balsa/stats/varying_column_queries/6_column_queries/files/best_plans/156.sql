/*+ MergeJoin(v ph p u c)
 MergeJoin(p u c)
 MergeJoin(u c)
 MergeJoin(v ph)
 IndexScan(v)
 IndexScan(ph)
 SeqScan(p)
 IndexScan(u)
 SeqScan(c)
 Leading(((v ph) (p (u c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-21 05:09:44'::timestamp AND c.CreationDate<='2014-09-13 21:02:03'::timestamp AND p.PostTypeId=1 AND u.Reputation<=549 AND u.Views>=0;

