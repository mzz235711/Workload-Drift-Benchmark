/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<81 AND p.CommentCount>7 AND p.CommentCount<17 AND u.DownVotes>372 AND u.DownVotes<1307 AND v.CreationDate>'2010-01-03 02:52:12'::timestamp AND v.CreationDate<'2013-09-05 16:12:27'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-09-17 17:31:19'::timestamp AND b.Date<'2013-07-14 12:08:44'::timestamp;

