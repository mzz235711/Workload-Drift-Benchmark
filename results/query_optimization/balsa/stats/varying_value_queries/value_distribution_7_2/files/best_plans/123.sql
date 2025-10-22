/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<39 AND p.CommentCount>10 AND p.CommentCount<24 AND u.DownVotes>145 AND u.DownVotes<455 AND v.CreationDate>'2009-10-08 18:24:48'::timestamp AND v.CreationDate<'2014-06-16 05:25:37'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2010-12-21 22:26:34'::timestamp AND b.Date<'2012-09-16 04:33:02'::timestamp;

