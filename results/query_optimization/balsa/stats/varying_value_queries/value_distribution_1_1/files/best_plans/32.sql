/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<19 AND p.CommentCount>3 AND p.CommentCount<30 AND u.DownVotes>3 AND u.DownVotes<588 AND v.CreationDate>'2011-09-19 20:17:11'::timestamp AND v.CreationDate<'2012-06-29 07:13:15'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2011-11-23 09:19:40'::timestamp AND b.Date<'2014-03-02 12:06:11'::timestamp;

