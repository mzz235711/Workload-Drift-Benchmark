/*+ HashJoin(v u b ph c)
 HashJoin(v u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 SeqScan(ph)
 SeqScan(c)
 Leading(((v ((u b) ph)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-07-20 16:03:44'::timestamp AND c.CreationDate<='2014-09-02 19:32:20'::timestamp AND ph.PostHistoryTypeId=4 AND u.Views>=0 AND u.Views<=111 AND u.DownVotes<=82;

