/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<10 AND p.CommentCount>6 AND p.CommentCount<23 AND u.DownVotes>692 AND u.DownVotes<1504 AND v.CreationDate>'2009-04-26 19:35:13'::timestamp AND v.CreationDate<'2013-07-15 13:55:44'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2010-12-21 13:12:54'::timestamp AND b.Date<'2012-10-28 07:32:41'::timestamp;

