/*+ HashJoin(b ph u p)
 MergeJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate<='2014-09-06 22:02:43'::timestamp AND p.PostTypeId=1 AND p.Score<=13 AND p.CommentCount>=0 AND p.CommentCount<=19 AND u.DownVotes>=0 AND u.DownVotes<=0;

