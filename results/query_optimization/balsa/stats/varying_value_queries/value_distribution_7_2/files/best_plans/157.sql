/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<139 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>615 AND u.DownVotes<1087 AND v.CreationDate>'2011-08-16 14:08:06'::timestamp AND v.CreationDate<'2014-02-07 06:33:45'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2013-02-07 15:59:39'::timestamp AND b.Date<'2013-11-12 04:32:10'::timestamp;

