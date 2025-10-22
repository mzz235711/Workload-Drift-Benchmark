/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<158 AND p.CommentCount>1 AND p.CommentCount<13 AND u.DownVotes>128 AND u.DownVotes<1697 AND v.CreationDate>'2009-11-06 07:27:03'::timestamp AND v.CreationDate<'2013-06-26 22:26:32'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-03-18 12:10:24'::timestamp AND b.Date<'2011-12-14 09:51:24'::timestamp;

