/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<70 AND p.CommentCount>4 AND p.CommentCount<19 AND u.DownVotes>46 AND u.DownVotes<881 AND v.CreationDate>'2011-10-31 11:55:25'::timestamp AND v.CreationDate<'2013-02-21 00:39:16'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2011-10-26 17:20:39'::timestamp AND b.Date<'2012-12-21 14:17:19'::timestamp;

