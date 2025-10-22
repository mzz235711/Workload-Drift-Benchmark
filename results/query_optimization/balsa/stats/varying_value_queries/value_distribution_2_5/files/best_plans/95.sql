/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<23 AND p.CommentCount>7 AND p.CommentCount<44 AND u.DownVotes>557 AND u.DownVotes<1499 AND v.CreationDate>'2010-09-10 05:33:57'::timestamp AND v.CreationDate<'2011-08-20 05:53:09'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-03-12 14:53:24'::timestamp AND b.Date<'2013-09-29 16:57:28'::timestamp;

