/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<108 AND p.CommentCount>3 AND p.CommentCount<6 AND u.DownVotes>16 AND u.DownVotes<1834 AND v.CreationDate>'2010-12-06 18:42:00'::timestamp AND v.CreationDate<'2011-06-20 23:42:37'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2012-02-23 01:40:54'::timestamp AND b.Date<'2013-06-02 15:28:47'::timestamp;

