/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<173 AND p.CommentCount>2 AND p.CommentCount<14 AND u.DownVotes>745 AND u.DownVotes<1761 AND v.CreationDate>'2010-06-26 06:10:35'::timestamp AND v.CreationDate<'2013-11-05 06:05:05'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2011-06-21 08:15:24'::timestamp AND b.Date<'2012-05-30 08:20:33'::timestamp;

