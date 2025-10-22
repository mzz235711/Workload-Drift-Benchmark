/*+ HashJoin(b ph p u)
 HashJoin(p u)
 HashJoin(b ph)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading(((b ph) (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate='2014-02-13 08:02:31'::timestamp AND p.CreationDate<='2014-08-17 04:15:47'::timestamp AND u.Views>=0 AND u.Views<=42 AND u.CreationDate>='2010-07-19 20:21:35'::timestamp;

