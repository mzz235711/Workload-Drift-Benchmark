/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<161 AND p.CommentCount>13 AND p.CommentCount<36 AND u.DownVotes>348 AND u.DownVotes<1820 AND v.CreationDate>'2011-03-27 08:27:27'::timestamp AND v.CreationDate<'2014-04-15 15:44:22'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2010-08-16 22:27:33'::timestamp AND b.Date<'2011-11-11 08:44:19'::timestamp;

