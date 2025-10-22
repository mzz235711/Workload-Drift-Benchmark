/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<74 AND p.CommentCount>2 AND p.CommentCount<21 AND u.DownVotes>671 AND u.DownVotes<1099 AND v.CreationDate>'2010-01-28 21:26:10'::timestamp AND v.CreationDate<'2012-11-27 22:44:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-11-06 21:31:45'::timestamp AND b.Date<'2014-01-17 15:39:05'::timestamp;

