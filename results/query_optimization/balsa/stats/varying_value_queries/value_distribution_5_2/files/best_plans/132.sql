/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<130 AND p.CommentCount>10 AND p.CommentCount<21 AND u.DownVotes>98 AND u.DownVotes<815 AND v.CreationDate>'2010-09-14 05:07:42'::timestamp AND v.CreationDate<'2014-06-03 18:53:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-07-05 02:21:58'::timestamp AND b.Date<'2013-10-24 18:21:34'::timestamp;

