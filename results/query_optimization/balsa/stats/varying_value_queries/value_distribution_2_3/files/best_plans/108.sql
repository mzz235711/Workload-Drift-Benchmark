/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<42 AND p.CommentCount>0 AND p.CommentCount<35 AND u.DownVotes>508 AND u.DownVotes<1539 AND v.CreationDate>'2009-09-25 21:38:07'::timestamp AND v.CreationDate<'2014-06-23 23:26:23'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2011-02-01 08:04:46'::timestamp AND b.Date<'2012-10-23 09:00:13'::timestamp;

