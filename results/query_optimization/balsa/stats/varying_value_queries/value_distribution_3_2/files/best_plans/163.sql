/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<35 AND p.CommentCount>3 AND p.CommentCount<41 AND u.DownVotes>726 AND u.DownVotes<813 AND v.CreationDate>'2010-01-28 23:04:54'::timestamp AND v.CreationDate<'2011-09-10 16:26:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2014-02-20 11:15:14'::timestamp AND b.Date<'2014-05-15 23:54:33'::timestamp;

