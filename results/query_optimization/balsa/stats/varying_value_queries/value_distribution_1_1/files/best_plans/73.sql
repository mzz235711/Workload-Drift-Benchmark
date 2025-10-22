/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<27 AND p.CommentCount>19 AND p.CommentCount<22 AND u.DownVotes>697 AND u.DownVotes<853 AND v.CreationDate>'2010-06-08 18:39:55'::timestamp AND v.CreationDate<'2014-05-30 19:16:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-05-18 22:45:15'::timestamp AND b.Date<'2013-04-18 18:14:33'::timestamp;

