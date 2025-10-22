/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<70 AND p.CommentCount>18 AND p.CommentCount<41 AND u.DownVotes>278 AND u.DownVotes<1281 AND v.CreationDate>'2010-08-08 22:24:27'::timestamp AND v.CreationDate<'2012-10-30 01:30:48'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2011-02-13 12:23:41'::timestamp AND b.Date<'2012-08-11 18:30:15'::timestamp;

