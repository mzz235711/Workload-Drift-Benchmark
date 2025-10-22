/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>48 AND p.Score<187 AND p.CommentCount>5 AND p.CommentCount<36 AND u.DownVotes>417 AND u.DownVotes<1086 AND v.CreationDate>'2012-06-01 08:56:49'::timestamp AND v.CreationDate<'2014-09-03 10:55:06'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2013-02-23 06:58:20'::timestamp AND b.Date<'2013-10-21 16:41:11'::timestamp;

