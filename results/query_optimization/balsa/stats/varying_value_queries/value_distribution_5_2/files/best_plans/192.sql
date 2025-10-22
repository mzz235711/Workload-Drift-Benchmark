/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<104 AND p.CommentCount>17 AND p.CommentCount<44 AND u.DownVotes>3 AND u.DownVotes<833 AND v.CreationDate>'2010-12-29 17:30:22'::timestamp AND v.CreationDate<'2012-04-29 15:57:15'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2014-01-14 15:41:30'::timestamp AND b.Date<'2014-06-27 21:20:07'::timestamp;

