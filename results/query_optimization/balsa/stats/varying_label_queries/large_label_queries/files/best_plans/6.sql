/*+ MergeJoin(ph u p)
 MergeJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2011-01-13 14:51:20'::timestamp AND p.Score>=-3 AND p.Score<=152 AND p.ViewCount<=2829 AND p.CommentCount<=12 AND u.Views>=0 AND u.Views<=14 AND u.DownVotes>=0 AND u.DownVotes<=4;

