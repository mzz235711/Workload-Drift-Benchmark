/*+ NestLoop(u b p v)
 NestLoop(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<116 AND p.CommentCount>8 AND p.CommentCount<19 AND u.DownVotes>765 AND u.DownVotes<1082 AND v.CreationDate>'2012-04-23 03:23:58'::timestamp AND v.CreationDate<'2014-03-05 11:37:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2012-04-25 07:30:27'::timestamp AND b.Date<'2012-05-01 03:20:00'::timestamp;

