/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<41 AND p.CommentCount>4 AND p.CommentCount<26 AND u.DownVotes>140 AND u.DownVotes<1380 AND v.CreationDate>'2010-07-09 00:01:25'::timestamp AND v.CreationDate<'2012-03-11 07:25:30'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2013-12-15 08:57:22'::timestamp AND b.Date<'2014-01-14 22:23:42'::timestamp;

