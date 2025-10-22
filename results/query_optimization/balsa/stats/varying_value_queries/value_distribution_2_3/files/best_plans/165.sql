/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<94 AND p.CommentCount>5 AND p.CommentCount<29 AND u.DownVotes>235 AND u.DownVotes<1130 AND v.CreationDate>'2009-09-01 05:53:16'::timestamp AND v.CreationDate<'2014-06-23 16:55:56'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2011-06-27 03:26:59'::timestamp AND b.Date<'2013-02-13 19:46:17'::timestamp;

