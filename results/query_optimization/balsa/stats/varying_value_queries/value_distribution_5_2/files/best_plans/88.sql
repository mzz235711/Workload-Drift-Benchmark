/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<173 AND p.CommentCount>11 AND p.CommentCount<15 AND u.DownVotes>121 AND u.DownVotes<1466 AND v.CreationDate>'2009-10-19 08:06:04'::timestamp AND v.CreationDate<'2013-02-03 18:05:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-07-24 09:40:58'::timestamp AND b.Date<'2012-06-11 08:12:27'::timestamp;

