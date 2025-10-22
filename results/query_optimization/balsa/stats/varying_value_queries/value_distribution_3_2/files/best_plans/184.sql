/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>44 AND p.Score<182 AND p.CommentCount>3 AND p.CommentCount<16 AND u.DownVotes>228 AND u.DownVotes<1197 AND v.CreationDate>'2013-02-06 08:24:51'::timestamp AND v.CreationDate<'2013-10-26 10:59:59'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2012-07-03 18:26:53'::timestamp AND b.Date<'2014-02-09 19:32:06'::timestamp;

