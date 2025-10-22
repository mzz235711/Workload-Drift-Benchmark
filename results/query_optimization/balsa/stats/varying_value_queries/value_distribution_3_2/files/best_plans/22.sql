/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>51 AND p.Score<159 AND p.CommentCount>4 AND p.CommentCount<35 AND u.DownVotes>77 AND u.DownVotes<239 AND v.CreationDate>'2010-05-05 00:41:09'::timestamp AND v.CreationDate<'2013-07-25 04:37:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-04-28 01:20:42'::timestamp AND b.Date<'2013-11-06 20:52:45'::timestamp;

