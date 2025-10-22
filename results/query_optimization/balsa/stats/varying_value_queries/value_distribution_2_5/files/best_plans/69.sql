/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<125 AND p.CommentCount>6 AND p.CommentCount<31 AND u.DownVotes>9 AND u.DownVotes<1159 AND v.CreationDate>'2012-12-21 06:30:33'::timestamp AND v.CreationDate<'2013-09-05 11:20:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2013-05-07 23:32:25'::timestamp AND b.Date<'2013-11-24 01:07:17'::timestamp;

