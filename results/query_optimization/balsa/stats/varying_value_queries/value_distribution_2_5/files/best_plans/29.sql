/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<118 AND p.CommentCount>1 AND p.CommentCount<43 AND u.DownVotes>337 AND u.DownVotes<1907 AND v.CreationDate>'2009-07-01 03:36:01'::timestamp AND v.CreationDate<'2012-08-12 10:56:19'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<13 AND b.Date>'2012-02-11 20:45:54'::timestamp AND b.Date<'2014-06-06 17:12:16'::timestamp;

