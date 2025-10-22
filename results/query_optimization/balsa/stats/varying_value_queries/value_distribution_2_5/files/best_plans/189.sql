/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<168 AND p.CommentCount>1 AND p.CommentCount<33 AND u.DownVotes>703 AND u.DownVotes<1150 AND v.CreationDate>'2010-09-28 18:37:35'::timestamp AND v.CreationDate<'2012-02-24 03:23:32'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-11-02 04:28:12'::timestamp AND b.Date<'2012-10-15 07:58:21'::timestamp;

