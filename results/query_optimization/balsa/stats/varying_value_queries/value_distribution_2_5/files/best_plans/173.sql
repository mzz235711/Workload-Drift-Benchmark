/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<76 AND p.CommentCount>1 AND p.CommentCount<33 AND u.DownVotes>24 AND u.DownVotes<799 AND v.CreationDate>'2010-04-22 02:35:06'::timestamp AND v.CreationDate<'2012-02-16 09:00:20'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-06-18 15:58:47'::timestamp AND b.Date<'2014-06-06 07:26:54'::timestamp;

