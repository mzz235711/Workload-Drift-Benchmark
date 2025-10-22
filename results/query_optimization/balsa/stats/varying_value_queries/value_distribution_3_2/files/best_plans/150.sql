/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>86 AND p.Score<129 AND p.CommentCount>0 AND p.CommentCount<21 AND u.DownVotes>11 AND u.DownVotes<971 AND v.CreationDate>'2010-01-26 07:31:19'::timestamp AND v.CreationDate<'2011-12-21 21:53:53'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<7 AND b.Date>'2011-11-22 05:53:35'::timestamp AND b.Date<'2014-06-12 14:08:22'::timestamp;

