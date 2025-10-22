/*+ MergeJoin(ph u p b)
 MergeJoin(ph u p)
 NestLoop(u p)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(p)
 SeqScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND u.Views>=0 AND u.DownVotes>=0 AND u.CreationDate<='2014-09-01 02:14:24'::timestamp;

