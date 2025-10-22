/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>118 AND p.Score<176 AND p.CommentCount>10 AND p.CommentCount<15 AND u.DownVotes>31 AND u.DownVotes<485 AND v.CreationDate>'2010-05-23 06:07:27'::timestamp AND v.CreationDate<'2012-08-01 19:30:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-07-08 02:18:13'::timestamp AND b.Date<'2014-05-31 10:12:46'::timestamp;

