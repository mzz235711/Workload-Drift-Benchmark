/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<179 AND p.CommentCount>4 AND p.CommentCount<21 AND u.DownVotes>117 AND u.DownVotes<310 AND v.CreationDate>'2009-11-16 02:58:02'::timestamp AND v.CreationDate<'2013-11-19 03:37:12'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2012-06-10 07:11:24'::timestamp AND b.Date<'2013-09-27 12:49:39'::timestamp;

