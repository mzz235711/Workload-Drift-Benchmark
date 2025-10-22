/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<84 AND p.CommentCount>6 AND p.CommentCount<36 AND u.DownVotes>761 AND u.DownVotes<878 AND v.CreationDate>'2009-09-03 15:17:01'::timestamp AND v.CreationDate<'2013-08-08 01:41:19'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2011-11-25 18:12:55'::timestamp AND b.Date<'2011-12-30 03:33:38'::timestamp;

