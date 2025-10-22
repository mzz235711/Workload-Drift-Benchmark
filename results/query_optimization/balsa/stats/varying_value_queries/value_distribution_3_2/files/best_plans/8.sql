/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<172 AND p.CommentCount>1 AND p.CommentCount<9 AND u.DownVotes>224 AND u.DownVotes<705 AND v.CreationDate>'2010-10-02 18:57:24'::timestamp AND v.CreationDate<'2013-07-14 08:42:15'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2011-01-15 11:43:18'::timestamp AND b.Date<'2012-10-13 09:54:21'::timestamp;

