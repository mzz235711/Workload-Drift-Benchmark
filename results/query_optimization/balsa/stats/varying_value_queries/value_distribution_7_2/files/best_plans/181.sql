/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<167 AND p.CommentCount>0 AND p.CommentCount<43 AND u.DownVotes>460 AND u.DownVotes<1091 AND v.CreationDate>'2012-12-14 18:58:54'::timestamp AND v.CreationDate<'2014-02-01 09:39:57'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2010-08-26 21:36:20'::timestamp AND b.Date<'2012-04-03 18:43:24'::timestamp;

