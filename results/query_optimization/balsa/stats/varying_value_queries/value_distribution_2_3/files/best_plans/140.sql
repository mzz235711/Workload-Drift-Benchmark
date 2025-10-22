/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<144 AND p.CommentCount>12 AND p.CommentCount<44 AND u.DownVotes>110 AND u.DownVotes<401 AND v.CreationDate>'2011-05-11 04:56:08'::timestamp AND v.CreationDate<'2014-05-23 10:49:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2012-04-23 14:38:10'::timestamp AND b.Date<'2012-12-06 12:28:18'::timestamp;

