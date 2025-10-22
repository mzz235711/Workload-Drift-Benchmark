/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<102 AND p.CommentCount>17 AND p.CommentCount<44 AND u.DownVotes>453 AND u.DownVotes<1499 AND v.CreationDate>'2010-02-20 12:11:58'::timestamp AND v.CreationDate<'2012-12-07 04:25:32'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-10-25 11:11:01'::timestamp AND b.Date<'2013-04-30 04:37:40'::timestamp;

