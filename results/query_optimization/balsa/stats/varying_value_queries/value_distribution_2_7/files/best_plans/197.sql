/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<131 AND p.CommentCount>7 AND p.CommentCount<39 AND u.DownVotes>617 AND u.DownVotes<1335 AND v.CreationDate>'2011-07-15 05:51:45'::timestamp AND v.CreationDate<'2013-05-01 08:54:23'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-09-17 08:56:28'::timestamp AND b.Date<'2014-02-02 08:56:59'::timestamp;

