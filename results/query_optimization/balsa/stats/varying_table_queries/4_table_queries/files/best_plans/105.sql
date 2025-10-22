/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.CreationDate>='2010-07-22 16:32:57'::timestamp AND p.CreationDate<='2014-09-12 20:41:35'::timestamp AND u.Views>=0 AND u.Views<=42 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-07 05:13:28'::timestamp;

