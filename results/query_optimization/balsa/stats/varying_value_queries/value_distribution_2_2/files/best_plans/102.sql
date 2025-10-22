/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<169 AND p.CommentCount>9 AND p.CommentCount<35 AND u.DownVotes>61 AND u.DownVotes<670 AND v.CreationDate>'2010-07-06 11:41:06'::timestamp AND v.CreationDate<'2014-07-12 05:46:37'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2011-06-19 03:19:16'::timestamp AND b.Date<'2012-05-29 05:00:26'::timestamp;

