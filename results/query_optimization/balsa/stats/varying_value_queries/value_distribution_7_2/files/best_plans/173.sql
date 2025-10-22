/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<69 AND p.CommentCount>11 AND p.CommentCount<18 AND u.DownVotes>19 AND u.DownVotes<750 AND v.CreationDate>'2010-04-19 16:21:34'::timestamp AND v.CreationDate<'2012-07-12 06:46:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2010-11-11 20:22:47'::timestamp AND b.Date<'2011-02-28 14:41:52'::timestamp;

