/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<35 AND p.CommentCount>4 AND p.CommentCount<12 AND u.DownVotes>331 AND u.DownVotes<560 AND v.CreationDate>'2009-03-21 23:53:32'::timestamp AND v.CreationDate<'2014-02-02 19:12:19'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2011-09-12 09:56:04'::timestamp AND b.Date<'2013-03-26 23:14:23'::timestamp;

