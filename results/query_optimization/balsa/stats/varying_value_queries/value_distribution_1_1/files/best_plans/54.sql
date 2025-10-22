/*+ MergeJoin(b p u v)
 MergeJoin(p u v)
 MergeJoin(p u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<167 AND p.CommentCount>5 AND p.CommentCount<30 AND u.DownVotes>434 AND u.DownVotes<1736 AND v.CreationDate>'2010-11-21 11:13:51'::timestamp AND v.CreationDate<'2014-07-30 14:19:23'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-05-28 18:53:35'::timestamp AND b.Date<'2013-03-28 07:31:58'::timestamp;

