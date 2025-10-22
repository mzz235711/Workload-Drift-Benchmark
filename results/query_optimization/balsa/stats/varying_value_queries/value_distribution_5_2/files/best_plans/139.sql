/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<139 AND p.CommentCount>2 AND p.CommentCount<21 AND u.DownVotes>175 AND u.DownVotes<500 AND v.CreationDate>'2012-01-04 15:35:23'::timestamp AND v.CreationDate<'2014-08-01 10:13:58'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2011-12-28 03:59:00'::timestamp AND b.Date<'2013-07-28 00:54:29'::timestamp;

